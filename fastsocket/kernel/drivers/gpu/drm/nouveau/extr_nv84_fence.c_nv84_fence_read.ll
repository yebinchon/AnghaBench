; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv84_fence.c_nv84_fence_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv84_fence.c_nv84_fence_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_channel = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { %struct.nv84_fence_priv* }
%struct.nv84_fence_priv = type { i32 }
%struct.nouveau_fifo_chan = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_channel*)* @nv84_fence_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv84_fence_read(%struct.nouveau_channel* %0) #0 {
  %2 = alloca %struct.nouveau_channel*, align 8
  %3 = alloca %struct.nouveau_fifo_chan*, align 8
  %4 = alloca %struct.nv84_fence_priv*, align 8
  store %struct.nouveau_channel* %0, %struct.nouveau_channel** %2, align 8
  %5 = load %struct.nouveau_channel*, %struct.nouveau_channel** %2, align 8
  %6 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to i8*
  %9 = bitcast i8* %8 to %struct.nouveau_fifo_chan*
  store %struct.nouveau_fifo_chan* %9, %struct.nouveau_fifo_chan** %3, align 8
  %10 = load %struct.nouveau_channel*, %struct.nouveau_channel** %2, align 8
  %11 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %13, align 8
  store %struct.nv84_fence_priv* %14, %struct.nv84_fence_priv** %4, align 8
  %15 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %4, align 8
  %16 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.nouveau_fifo_chan*, %struct.nouveau_fifo_chan** %3, align 8
  %19 = getelementptr inbounds %struct.nouveau_fifo_chan, %struct.nouveau_fifo_chan* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %20, 16
  %22 = sdiv i32 %21, 4
  %23 = call i32 @nouveau_bo_rd32(i32 %17, i32 %22)
  ret i32 %23
}

declare dso_local i32 @nouveau_bo_rd32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
