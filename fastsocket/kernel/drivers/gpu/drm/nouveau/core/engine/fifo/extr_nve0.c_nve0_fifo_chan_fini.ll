; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nve0.c_nve0_fifo_chan_fini.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nve0.c_nve0_fifo_chan_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i64 }
%struct.nve0_fifo_priv = type { i32 }
%struct.nve0_fifo_chan = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, i32)* @nve0_fifo_chan_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nve0_fifo_chan_fini(%struct.nouveau_object* %0, i32 %1) #0 {
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nve0_fifo_priv*, align 8
  %6 = alloca %struct.nve0_fifo_chan*, align 8
  %7 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %9 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.nve0_fifo_priv*
  store %struct.nve0_fifo_priv* %12, %struct.nve0_fifo_priv** %5, align 8
  %13 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %14 = bitcast %struct.nouveau_object* %13 to i8*
  %15 = bitcast i8* %14 to %struct.nve0_fifo_chan*
  store %struct.nve0_fifo_chan* %15, %struct.nve0_fifo_chan** %6, align 8
  %16 = load %struct.nve0_fifo_chan*, %struct.nve0_fifo_chan** %6, align 8
  %17 = getelementptr inbounds %struct.nve0_fifo_chan, %struct.nve0_fifo_chan* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = mul nsw i32 %21, 8
  %23 = add nsw i32 8388612, %22
  %24 = call i32 @nv_mask(%struct.nve0_fifo_priv* %20, i32 %23, i32 2048, i32 2048)
  %25 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %5, align 8
  %26 = load %struct.nve0_fifo_chan*, %struct.nve0_fifo_chan** %6, align 8
  %27 = getelementptr inbounds %struct.nve0_fifo_chan, %struct.nve0_fifo_chan* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @nve0_fifo_playlist_update(%struct.nve0_fifo_priv* %25, i32 %28)
  %30 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = mul nsw i32 %31, 8
  %33 = add nsw i32 8388608, %32
  %34 = call i32 @nv_wr32(%struct.nve0_fifo_priv* %30, i32 %33, i32 0)
  %35 = load %struct.nve0_fifo_chan*, %struct.nve0_fifo_chan** %6, align 8
  %36 = getelementptr inbounds %struct.nve0_fifo_chan, %struct.nve0_fifo_chan* %35, i32 0, i32 0
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @nouveau_fifo_channel_fini(%struct.TYPE_2__* %36, i32 %37)
  ret i32 %38
}

declare dso_local i32 @nv_mask(%struct.nve0_fifo_priv*, i32, i32, i32) #1

declare dso_local i32 @nve0_fifo_playlist_update(%struct.nve0_fifo_priv*, i32) #1

declare dso_local i32 @nv_wr32(%struct.nve0_fifo_priv*, i32, i32) #1

declare dso_local i32 @nouveau_fifo_channel_fini(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
