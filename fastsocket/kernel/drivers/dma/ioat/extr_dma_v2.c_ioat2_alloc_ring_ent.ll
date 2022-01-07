; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dma_v2.c_ioat2_alloc_ring_ent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dma_v2.c_ioat2_alloc_ring_ent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioat_ring_ent = type { %struct.TYPE_2__, %struct.ioat_ring_ent* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dma_chan = type { i32 }
%struct.ioat_dma_descriptor = type { %struct.TYPE_2__, %struct.ioat_dma_descriptor* }
%struct.ioatdma_device = type { i32 }

@ioat2_cache = common dso_local global i32 0, align 4
@ioat2_tx_submit_unlock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ioat_ring_ent* (%struct.dma_chan*, i32)* @ioat2_alloc_ring_ent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ioat_ring_ent* @ioat2_alloc_ring_ent(%struct.dma_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.ioat_ring_ent*, align 8
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ioat_dma_descriptor*, align 8
  %7 = alloca %struct.ioat_ring_ent*, align 8
  %8 = alloca %struct.ioatdma_device*, align 8
  %9 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %11 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.ioatdma_device* @to_ioatdma_device(i32 %12)
  store %struct.ioatdma_device* %13, %struct.ioatdma_device** %8, align 8
  %14 = load %struct.ioatdma_device*, %struct.ioatdma_device** %8, align 8
  %15 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call %struct.ioat_ring_ent* @pci_pool_alloc(i32 %16, i32 %17, i32* %9)
  %19 = bitcast %struct.ioat_ring_ent* %18 to %struct.ioat_dma_descriptor*
  store %struct.ioat_dma_descriptor* %19, %struct.ioat_dma_descriptor** %6, align 8
  %20 = load %struct.ioat_dma_descriptor*, %struct.ioat_dma_descriptor** %6, align 8
  %21 = icmp ne %struct.ioat_dma_descriptor* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store %struct.ioat_ring_ent* null, %struct.ioat_ring_ent** %3, align 8
  br label %60

23:                                               ; preds = %2
  %24 = load %struct.ioat_dma_descriptor*, %struct.ioat_dma_descriptor** %6, align 8
  %25 = bitcast %struct.ioat_dma_descriptor* %24 to %struct.ioat_ring_ent*
  %26 = call i32 @memset(%struct.ioat_ring_ent* %25, i32 0, i32 16)
  %27 = load i32, i32* @ioat2_cache, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call %struct.ioat_ring_ent* @kmem_cache_alloc(i32 %27, i32 %28)
  store %struct.ioat_ring_ent* %29, %struct.ioat_ring_ent** %7, align 8
  %30 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %7, align 8
  %31 = icmp ne %struct.ioat_ring_ent* %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %23
  %33 = load %struct.ioatdma_device*, %struct.ioatdma_device** %8, align 8
  %34 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ioat_dma_descriptor*, %struct.ioat_dma_descriptor** %6, align 8
  %37 = bitcast %struct.ioat_dma_descriptor* %36 to %struct.ioat_ring_ent*
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @pci_pool_free(i32 %35, %struct.ioat_ring_ent* %37, i32 %38)
  store %struct.ioat_ring_ent* null, %struct.ioat_ring_ent** %3, align 8
  br label %60

40:                                               ; preds = %23
  %41 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %7, align 8
  %42 = call i32 @memset(%struct.ioat_ring_ent* %41, i32 0, i32 16)
  %43 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %7, align 8
  %44 = getelementptr inbounds %struct.ioat_ring_ent, %struct.ioat_ring_ent* %43, i32 0, i32 0
  %45 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %46 = call i32 @dma_async_tx_descriptor_init(%struct.TYPE_2__* %44, %struct.dma_chan* %45)
  %47 = load i32, i32* @ioat2_tx_submit_unlock, align 4
  %48 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %7, align 8
  %49 = getelementptr inbounds %struct.ioat_ring_ent, %struct.ioat_ring_ent* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = load %struct.ioat_dma_descriptor*, %struct.ioat_dma_descriptor** %6, align 8
  %52 = bitcast %struct.ioat_dma_descriptor* %51 to %struct.ioat_ring_ent*
  %53 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %7, align 8
  %54 = getelementptr inbounds %struct.ioat_ring_ent, %struct.ioat_ring_ent* %53, i32 0, i32 1
  store %struct.ioat_ring_ent* %52, %struct.ioat_ring_ent** %54, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %7, align 8
  %57 = getelementptr inbounds %struct.ioat_ring_ent, %struct.ioat_ring_ent* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  %59 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %7, align 8
  store %struct.ioat_ring_ent* %59, %struct.ioat_ring_ent** %3, align 8
  br label %60

60:                                               ; preds = %40, %32, %22
  %61 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %3, align 8
  ret %struct.ioat_ring_ent* %61
}

declare dso_local %struct.ioatdma_device* @to_ioatdma_device(i32) #1

declare dso_local %struct.ioat_ring_ent* @pci_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @memset(%struct.ioat_ring_ent*, i32, i32) #1

declare dso_local %struct.ioat_ring_ent* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @pci_pool_free(i32, %struct.ioat_ring_ent*, i32) #1

declare dso_local i32 @dma_async_tx_descriptor_init(%struct.TYPE_2__*, %struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
