; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nv50.c_nv50_fifo_chan_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nv50.c_nv50_fifo_chan_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i64, i64 }
%struct.nv50_fifo_priv = type { i32 }
%struct.nv50_fifo_base = type { %struct.nouveau_gpuobj* }
%struct.nouveau_gpuobj = type { i32 }
%struct.nv50_fifo_chan = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*)* @nv50_fifo_chan_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_fifo_chan_init(%struct.nouveau_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca %struct.nv50_fifo_priv*, align 8
  %5 = alloca %struct.nv50_fifo_base*, align 8
  %6 = alloca %struct.nv50_fifo_chan*, align 8
  %7 = alloca %struct.nouveau_gpuobj*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  %10 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %11 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.nv50_fifo_priv*
  store %struct.nv50_fifo_priv* %14, %struct.nv50_fifo_priv** %4, align 8
  %15 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %16 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = bitcast i8* %18 to %struct.nv50_fifo_base*
  store %struct.nv50_fifo_base* %19, %struct.nv50_fifo_base** %5, align 8
  %20 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %21 = bitcast %struct.nouveau_object* %20 to i8*
  %22 = bitcast i8* %21 to %struct.nv50_fifo_chan*
  store %struct.nv50_fifo_chan* %22, %struct.nv50_fifo_chan** %6, align 8
  %23 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %5, align 8
  %24 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %23, i32 0, i32 0
  %25 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %24, align 8
  store %struct.nouveau_gpuobj* %25, %struct.nouveau_gpuobj** %7, align 8
  %26 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %6, align 8
  %27 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  %30 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %6, align 8
  %31 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %30, i32 0, i32 0
  %32 = call i32 @nouveau_fifo_channel_init(%struct.TYPE_2__* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %1
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %2, align 4
  br label %50

37:                                               ; preds = %1
  %38 = load %struct.nv50_fifo_priv*, %struct.nv50_fifo_priv** %4, align 8
  %39 = load i32, i32* %8, align 4
  %40 = mul nsw i32 %39, 4
  %41 = add nsw i32 9728, %40
  %42 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %7, align 8
  %43 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 12
  %46 = or i32 -2147483648, %45
  %47 = call i32 @nv_wr32(%struct.nv50_fifo_priv* %38, i32 %41, i32 %46)
  %48 = load %struct.nv50_fifo_priv*, %struct.nv50_fifo_priv** %4, align 8
  %49 = call i32 @nv50_fifo_playlist_update(%struct.nv50_fifo_priv* %48)
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %37, %35
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @nouveau_fifo_channel_init(%struct.TYPE_2__*) #1

declare dso_local i32 @nv_wr32(%struct.nv50_fifo_priv*, i32, i32) #1

declare dso_local i32 @nv50_fifo_playlist_update(%struct.nv50_fifo_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
