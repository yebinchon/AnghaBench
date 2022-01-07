; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dma_v2.c_ioat2_free_ring_ent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dma_v2.c_ioat2_free_ring_ent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioat_ring_ent = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.dma_chan = type { i32 }
%struct.ioatdma_device = type { i32 }

@ioat2_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ioat_ring_ent*, %struct.dma_chan*)* @ioat2_free_ring_ent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioat2_free_ring_ent(%struct.ioat_ring_ent* %0, %struct.dma_chan* %1) #0 {
  %3 = alloca %struct.ioat_ring_ent*, align 8
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca %struct.ioatdma_device*, align 8
  store %struct.ioat_ring_ent* %0, %struct.ioat_ring_ent** %3, align 8
  store %struct.dma_chan* %1, %struct.dma_chan** %4, align 8
  %6 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %7 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.ioatdma_device* @to_ioatdma_device(i32 %8)
  store %struct.ioatdma_device* %9, %struct.ioatdma_device** %5, align 8
  %10 = load %struct.ioatdma_device*, %struct.ioatdma_device** %5, align 8
  %11 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %3, align 8
  %14 = getelementptr inbounds %struct.ioat_ring_ent, %struct.ioat_ring_ent* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %3, align 8
  %17 = getelementptr inbounds %struct.ioat_ring_ent, %struct.ioat_ring_ent* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pci_pool_free(i32 %12, i32 %15, i32 %19)
  %21 = load i32, i32* @ioat2_cache, align 4
  %22 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %3, align 8
  %23 = call i32 @kmem_cache_free(i32 %21, %struct.ioat_ring_ent* %22)
  ret void
}

declare dso_local %struct.ioatdma_device* @to_ioatdma_device(i32) #1

declare dso_local i32 @pci_pool_free(i32, i32, i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.ioat_ring_ent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
