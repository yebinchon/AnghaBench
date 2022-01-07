; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nv04.c_nv04_fifo_chan_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nv04.c_nv04_fifo_chan_ctor.c"
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
@nv04_fifo_object_attach = common dso_local global i32 0, align 4
@nv04_fifo_object_detach = common dso_local global i32 0, align 4
@nv04_fifo_context_attach = common dso_local global i32 0, align 4
@NV_PFIFO_CACHE1_DMA_FETCH_TRIG_128_BYTES = common dso_local global i32 0, align 4
@NV_PFIFO_CACHE1_DMA_FETCH_SIZE_128_BYTES = common dso_local global i32 0, align 4
@NV_PFIFO_CACHE1_DMA_FETCH_MAX_REQS_8 = common dso_local global i32 0, align 4
@NV_PFIFO_CACHE1_BIG_ENDIAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nv04_fifo_chan_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv04_fifo_chan_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
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
  br label %122

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
  %44 = call i32 @nouveau_fifo_channel_create(%struct.nouveau_object* %30, %struct.nouveau_object* %31, %struct.nouveau_oclass* %32, i32 0, i32 8388608, i32 65536, i32 %35, i64 %43, %struct.nv04_fifo_chan** %15)
  store i32 %44, i32* %17, align 4
  %45 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %15, align 8
  %46 = call %struct.nouveau_object* @nv_object(%struct.nv04_fifo_chan* %45)
  %47 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %46, %struct.nouveau_object** %47, align 8
  %48 = load i32, i32* %17, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %29
  %51 = load i32, i32* %17, align 4
  store i32 %51, i32* %7, align 4
  br label %122

52:                                               ; preds = %29
  %53 = load i32, i32* @nv04_fifo_object_attach, align 4
  %54 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %15, align 8
  %55 = call %struct.TYPE_6__* @nv_parent(%struct.nv04_fifo_chan* %54)
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* @nv04_fifo_object_detach, align 4
  %58 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %15, align 8
  %59 = call %struct.TYPE_6__* @nv_parent(%struct.nv04_fifo_chan* %58)
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 4
  %61 = load i32, i32* @nv04_fifo_context_attach, align 4
  %62 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %15, align 8
  %63 = call %struct.TYPE_6__* @nv_parent(%struct.nv04_fifo_chan* %62)
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 4
  %65 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %15, align 8
  %66 = getelementptr inbounds %struct.nv04_fifo_chan, %struct.nv04_fifo_chan* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = mul nsw i32 %68, 32
  %70 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %15, align 8
  %71 = getelementptr inbounds %struct.nv04_fifo_chan, %struct.nv04_fifo_chan* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %14, align 8
  %73 = getelementptr inbounds %struct.nv04_fifo_priv, %struct.nv04_fifo_priv* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %15, align 8
  %76 = getelementptr inbounds %struct.nv04_fifo_chan, %struct.nv04_fifo_chan* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 0
  %79 = load %struct.nv03_channel_dma_class*, %struct.nv03_channel_dma_class** %16, align 8
  %80 = getelementptr inbounds %struct.nv03_channel_dma_class, %struct.nv03_channel_dma_class* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @nv_wo32(i32 %74, i32 %78, i32 %81)
  %83 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %14, align 8
  %84 = getelementptr inbounds %struct.nv04_fifo_priv, %struct.nv04_fifo_priv* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %15, align 8
  %87 = getelementptr inbounds %struct.nv04_fifo_chan, %struct.nv04_fifo_chan* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 4
  %90 = load %struct.nv03_channel_dma_class*, %struct.nv03_channel_dma_class** %16, align 8
  %91 = getelementptr inbounds %struct.nv03_channel_dma_class, %struct.nv03_channel_dma_class* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @nv_wo32(i32 %85, i32 %89, i32 %92)
  %94 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %14, align 8
  %95 = getelementptr inbounds %struct.nv04_fifo_priv, %struct.nv04_fifo_priv* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %15, align 8
  %98 = getelementptr inbounds %struct.nv04_fifo_chan, %struct.nv04_fifo_chan* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, 8
  %101 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %15, align 8
  %102 = getelementptr inbounds %struct.nv04_fifo_chan, %struct.nv04_fifo_chan* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = ashr i32 %106, 4
  %108 = call i32 @nv_wo32(i32 %96, i32 %100, i32 %107)
  %109 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %14, align 8
  %110 = getelementptr inbounds %struct.nv04_fifo_priv, %struct.nv04_fifo_priv* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %15, align 8
  %113 = getelementptr inbounds %struct.nv04_fifo_chan, %struct.nv04_fifo_chan* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, 16
  %116 = load i32, i32* @NV_PFIFO_CACHE1_DMA_FETCH_TRIG_128_BYTES, align 4
  %117 = load i32, i32* @NV_PFIFO_CACHE1_DMA_FETCH_SIZE_128_BYTES, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @NV_PFIFO_CACHE1_DMA_FETCH_MAX_REQS_8, align 4
  %120 = or i32 %118, %119
  %121 = call i32 @nv_wo32(i32 %111, i32 %115, i32 %120)
  store i32 0, i32* %7, align 4
  br label %122

122:                                              ; preds = %52, %50, %26
  %123 = load i32, i32* %7, align 4
  ret i32 %123
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
