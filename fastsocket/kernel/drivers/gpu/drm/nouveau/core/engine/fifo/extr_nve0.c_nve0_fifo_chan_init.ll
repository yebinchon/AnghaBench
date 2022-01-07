; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nve0.c_nve0_fifo_chan_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nve0.c_nve0_fifo_chan_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i64, i32 }
%struct.nouveau_gpuobj = type { i32 }
%struct.nve0_fifo_priv = type { i32 }
%struct.nve0_fifo_chan = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*)* @nve0_fifo_chan_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nve0_fifo_chan_init(%struct.nouveau_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca %struct.nouveau_gpuobj*, align 8
  %5 = alloca %struct.nve0_fifo_priv*, align 8
  %6 = alloca %struct.nve0_fifo_chan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  %9 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %10 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.nouveau_gpuobj* @nv_gpuobj(i32 %11)
  store %struct.nouveau_gpuobj* %12, %struct.nouveau_gpuobj** %4, align 8
  %13 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %14 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.nve0_fifo_priv*
  store %struct.nve0_fifo_priv* %17, %struct.nve0_fifo_priv** %5, align 8
  %18 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %19 = bitcast %struct.nouveau_object* %18 to i8*
  %20 = bitcast i8* %19 to %struct.nve0_fifo_chan*
  store %struct.nve0_fifo_chan* %20, %struct.nve0_fifo_chan** %6, align 8
  %21 = load %struct.nve0_fifo_chan*, %struct.nve0_fifo_chan** %6, align 8
  %22 = getelementptr inbounds %struct.nve0_fifo_chan, %struct.nve0_fifo_chan* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  %25 = load %struct.nve0_fifo_chan*, %struct.nve0_fifo_chan** %6, align 8
  %26 = getelementptr inbounds %struct.nve0_fifo_chan, %struct.nve0_fifo_chan* %25, i32 0, i32 1
  %27 = call i32 @nouveau_fifo_channel_init(%struct.TYPE_2__* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %2, align 4
  br label %67

32:                                               ; preds = %1
  %33 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = mul nsw i32 %34, 8
  %36 = add nsw i32 8388612, %35
  %37 = load %struct.nve0_fifo_chan*, %struct.nve0_fifo_chan** %6, align 8
  %38 = getelementptr inbounds %struct.nve0_fifo_chan, %struct.nve0_fifo_chan* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 16
  %41 = call i32 @nv_mask(%struct.nve0_fifo_priv* %33, i32 %36, i32 983040, i32 %40)
  %42 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = mul nsw i32 %43, 8
  %45 = add nsw i32 8388608, %44
  %46 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %4, align 8
  %47 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %48, 12
  %50 = or i32 -2147483648, %49
  %51 = call i32 @nv_wr32(%struct.nve0_fifo_priv* %42, i32 %45, i32 %50)
  %52 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = mul nsw i32 %53, 8
  %55 = add nsw i32 8388612, %54
  %56 = call i32 @nv_mask(%struct.nve0_fifo_priv* %52, i32 %55, i32 1024, i32 1024)
  %57 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %5, align 8
  %58 = load %struct.nve0_fifo_chan*, %struct.nve0_fifo_chan** %6, align 8
  %59 = getelementptr inbounds %struct.nve0_fifo_chan, %struct.nve0_fifo_chan* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @nve0_fifo_playlist_update(%struct.nve0_fifo_priv* %57, i32 %60)
  %62 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %5, align 8
  %63 = load i32, i32* %7, align 4
  %64 = mul nsw i32 %63, 8
  %65 = add nsw i32 8388612, %64
  %66 = call i32 @nv_mask(%struct.nve0_fifo_priv* %62, i32 %65, i32 1024, i32 1024)
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %32, %30
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.nouveau_gpuobj* @nv_gpuobj(i32) #1

declare dso_local i32 @nouveau_fifo_channel_init(%struct.TYPE_2__*) #1

declare dso_local i32 @nv_mask(%struct.nve0_fifo_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_wr32(%struct.nve0_fifo_priv*, i32, i32) #1

declare dso_local i32 @nve0_fifo_playlist_update(%struct.nve0_fifo_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
