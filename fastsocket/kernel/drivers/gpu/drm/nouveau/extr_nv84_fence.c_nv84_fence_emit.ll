; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv84_fence.c_nv84_fence_emit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv84_fence.c_nv84_fence_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_fence = type { i32, i64, %struct.nouveau_channel* }
%struct.nouveau_channel = type { i64, %struct.nv84_fence_chan* }
%struct.nv84_fence_chan = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 (%struct.nouveau_channel.0*, i32, i32)* }
%struct.nouveau_channel.0 = type opaque
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.nouveau_fifo_chan = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_fence*)* @nv84_fence_emit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv84_fence_emit(%struct.nouveau_fence* %0) #0 {
  %2 = alloca %struct.nouveau_fence*, align 8
  %3 = alloca %struct.nouveau_channel*, align 8
  %4 = alloca %struct.nv84_fence_chan*, align 8
  %5 = alloca %struct.nouveau_fifo_chan*, align 8
  %6 = alloca i32, align 4
  store %struct.nouveau_fence* %0, %struct.nouveau_fence** %2, align 8
  %7 = load %struct.nouveau_fence*, %struct.nouveau_fence** %2, align 8
  %8 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %7, i32 0, i32 2
  %9 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  store %struct.nouveau_channel* %9, %struct.nouveau_channel** %3, align 8
  %10 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %11 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %10, i32 0, i32 1
  %12 = load %struct.nv84_fence_chan*, %struct.nv84_fence_chan** %11, align 8
  store %struct.nv84_fence_chan* %12, %struct.nv84_fence_chan** %4, align 8
  %13 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %14 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.nouveau_fifo_chan*
  store %struct.nouveau_fifo_chan* %17, %struct.nouveau_fifo_chan** %5, align 8
  %18 = load %struct.nouveau_fifo_chan*, %struct.nouveau_fifo_chan** %5, align 8
  %19 = getelementptr inbounds %struct.nouveau_fifo_chan, %struct.nouveau_fifo_chan* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %20, 16
  store i32 %21, i32* %6, align 4
  %22 = load %struct.nouveau_fence*, %struct.nouveau_fence** %2, align 8
  %23 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %1
  %27 = load %struct.nv84_fence_chan*, %struct.nv84_fence_chan** %4, align 8
  %28 = getelementptr inbounds %struct.nv84_fence_chan, %struct.nv84_fence_chan* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %6, align 4
  br label %44

35:                                               ; preds = %1
  %36 = load %struct.nv84_fence_chan*, %struct.nv84_fence_chan** %4, align 8
  %37 = getelementptr inbounds %struct.nv84_fence_chan, %struct.nv84_fence_chan* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %35, %26
  %45 = load %struct.nv84_fence_chan*, %struct.nv84_fence_chan** %4, align 8
  %46 = getelementptr inbounds %struct.nv84_fence_chan, %struct.nv84_fence_chan* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32 (%struct.nouveau_channel.0*, i32, i32)*, i32 (%struct.nouveau_channel.0*, i32, i32)** %47, align 8
  %49 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %50 = bitcast %struct.nouveau_channel* %49 to %struct.nouveau_channel.0*
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.nouveau_fence*, %struct.nouveau_fence** %2, align 8
  %53 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 %48(%struct.nouveau_channel.0* %50, i32 %51, i32 %54)
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
