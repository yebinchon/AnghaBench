; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nv17.c_nv17_fifo_chan_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nv17.c_nv17_fifo_chan_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nv04_fifo_priv = type { i32 }
%struct.nv04_fifo_chan = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.nv03_channel_dma_class = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@NVDEV_ENGINE_DMAOBJ = common dso_local global i64 0, align 8
@NVDEV_ENGINE_SW = common dso_local global i64 0, align 8
@NVDEV_ENGINE_GR = common dso_local global i64 0, align 8
@NVDEV_ENGINE_MPEG = common dso_local global i64 0, align 8
@nv04_fifo_object_attach = common dso_local global i32 0, align 4
@nv04_fifo_object_detach = common dso_local global i32 0, align 4
@nv04_fifo_context_attach = common dso_local global i32 0, align 4
@NV_PFIFO_CACHE1_DMA_FETCH_TRIG_128_BYTES = common dso_local global i32 0, align 4
@NV_PFIFO_CACHE1_DMA_FETCH_SIZE_128_BYTES = common dso_local global i32 0, align 4
@NV_PFIFO_CACHE1_DMA_FETCH_MAX_REQS_8 = common dso_local global i32 0, align 4
@NV_PFIFO_CACHE1_BIG_ENDIAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nv17_fifo_chan_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv17_fifo_chan_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.nv04_fifo_priv*, align 8
  %15 = alloca %struct.nv04_fifo_chan*, align 8
  %16 = alloca %struct.nv03_channel_dma_class*, align 8
  %17 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %9, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.nouveau_object** %5, %struct.nouveau_object*** %13, align 8
  %18 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %19 = bitcast %struct.nouveau_object* %18 to i8*
  %20 = bitcast i8* %19 to %struct.nv04_fifo_priv*
  store %struct.nv04_fifo_priv* %20, %struct.nv04_fifo_priv** %14, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = bitcast i8* %21 to %struct.nv03_channel_dma_class*
  store %struct.nv03_channel_dma_class* %22, %struct.nv03_channel_dma_class** %16, align 8
  %23 = load i32, i32* %12, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %24, 8
  br i1 %25, label %26, label %29

26:                                               ; preds = %6
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %125

29:                                               ; preds = %6
  %30 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %31 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %32 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %33 = load %struct.nv03_channel_dma_class*, %struct.nv03_channel_dma_class** %16, align 8
  %34 = getelementptr inbounds %struct.nv03_channel_dma_class, %struct.nv03_channel_dma_class* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* @NVDEV_ENGINE_DMAOBJ, align 8
  %37 = shl i64 1, %36
  %38 = load i64, i64* @NVDEV_ENGINE_SW, align 8
  %39 = shl i64 1, %38
  %40 = or i64 %37, %39
  %41 = load i64, i64* @NVDEV_ENGINE_GR, align 8
  %42 = shl i64 1, %41
  %43 = or i64 %40, %42
  %44 = load i64, i64* @NVDEV_ENGINE_MPEG, align 8
  %45 = shl i64 1, %44
  %46 = or i64 %43, %45
  %47 = call i32 @nouveau_fifo_channel_create(%struct.nouveau_object* %30, %struct.nouveau_object* %31, %struct.nouveau_oclass* %32, i32 0, i32 8388608, i32 65536, i32 %35, i64 %46, %struct.nv04_fifo_chan** %15)
  store i32 %47, i32* %17, align 4
  %48 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %15, align 8
  %49 = call %struct.nouveau_object* @nv_object(%struct.nv04_fifo_chan* %48)
  %50 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %49, %struct.nouveau_object** %50, align 8
  %51 = load i32, i32* %17, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %29
  %54 = load i32, i32* %17, align 4
  store i32 %54, i32* %7, align 4
  br label %125

55:                                               ; preds = %29
  %56 = load i32, i32* @nv04_fifo_object_attach, align 4
  %57 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %15, align 8
  %58 = call %struct.TYPE_6__* @nv_parent(%struct.nv04_fifo_chan* %57)
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* @nv04_fifo_object_detach, align 4
  %61 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %15, align 8
  %62 = call %struct.TYPE_6__* @nv_parent(%struct.nv04_fifo_chan* %61)
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 4
  %64 = load i32, i32* @nv04_fifo_context_attach, align 4
  %65 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %15, align 8
  %66 = call %struct.TYPE_6__* @nv_parent(%struct.nv04_fifo_chan* %65)
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 4
  %68 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %15, align 8
  %69 = getelementptr inbounds %struct.nv04_fifo_chan, %struct.nv04_fifo_chan* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = mul nsw i32 %71, 64
  %73 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %15, align 8
  %74 = getelementptr inbounds %struct.nv04_fifo_chan, %struct.nv04_fifo_chan* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %14, align 8
  %76 = getelementptr inbounds %struct.nv04_fifo_priv, %struct.nv04_fifo_priv* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %15, align 8
  %79 = getelementptr inbounds %struct.nv04_fifo_chan, %struct.nv04_fifo_chan* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 0
  %82 = load %struct.nv03_channel_dma_class*, %struct.nv03_channel_dma_class** %16, align 8
  %83 = getelementptr inbounds %struct.nv03_channel_dma_class, %struct.nv03_channel_dma_class* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @nv_wo32(i32 %77, i32 %81, i32 %84)
  %86 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %14, align 8
  %87 = getelementptr inbounds %struct.nv04_fifo_priv, %struct.nv04_fifo_priv* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %15, align 8
  %90 = getelementptr inbounds %struct.nv04_fifo_chan, %struct.nv04_fifo_chan* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 4
  %93 = load %struct.nv03_channel_dma_class*, %struct.nv03_channel_dma_class** %16, align 8
  %94 = getelementptr inbounds %struct.nv03_channel_dma_class, %struct.nv03_channel_dma_class* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @nv_wo32(i32 %88, i32 %92, i32 %95)
  %97 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %14, align 8
  %98 = getelementptr inbounds %struct.nv04_fifo_priv, %struct.nv04_fifo_priv* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %15, align 8
  %101 = getelementptr inbounds %struct.nv04_fifo_chan, %struct.nv04_fifo_chan* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 12
  %104 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %15, align 8
  %105 = getelementptr inbounds %struct.nv04_fifo_chan, %struct.nv04_fifo_chan* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = ashr i32 %109, 4
  %111 = call i32 @nv_wo32(i32 %99, i32 %103, i32 %110)
  %112 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %14, align 8
  %113 = getelementptr inbounds %struct.nv04_fifo_priv, %struct.nv04_fifo_priv* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %15, align 8
  %116 = getelementptr inbounds %struct.nv04_fifo_chan, %struct.nv04_fifo_chan* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, 20
  %119 = load i32, i32* @NV_PFIFO_CACHE1_DMA_FETCH_TRIG_128_BYTES, align 4
  %120 = load i32, i32* @NV_PFIFO_CACHE1_DMA_FETCH_SIZE_128_BYTES, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @NV_PFIFO_CACHE1_DMA_FETCH_MAX_REQS_8, align 4
  %123 = or i32 %121, %122
  %124 = call i32 @nv_wo32(i32 %114, i32 %118, i32 %123)
  store i32 0, i32* %7, align 4
  br label %125

125:                                              ; preds = %55, %53, %26
  %126 = load i32, i32* %7, align 4
  ret i32 %126
}

declare dso_local i32 @nouveau_fifo_channel_create(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32, i32, i32, i32, i64, %struct.nv04_fifo_chan**) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nv04_fifo_chan*) #1

declare dso_local %struct.TYPE_6__* @nv_parent(%struct.nv04_fifo_chan*) #1

declare dso_local i32 @nv_wo32(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
