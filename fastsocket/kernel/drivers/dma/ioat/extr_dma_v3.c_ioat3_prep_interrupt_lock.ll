; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dma_v3.c_ioat3_prep_interrupt_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dma_v3.c_ioat3_prep_interrupt_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i64 }
%struct.dma_chan = type { i32 }
%struct.ioat2_dma_chan = type { i32 }
%struct.ioat_ring_ent = type { i32, %struct.dma_async_tx_descriptor, %struct.ioat_dma_descriptor* }
%struct.ioat_dma_descriptor = type { i64, i64, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@DMA_PREP_FENCE = common dso_local global i64 0, align 8
@NULL_DESC_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.dma_chan*, i64)* @ioat3_prep_interrupt_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @ioat3_prep_interrupt_lock(%struct.dma_chan* %0, i64 %1) #0 {
  %3 = alloca %struct.dma_async_tx_descriptor*, align 8
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ioat2_dma_chan*, align 8
  %7 = alloca %struct.ioat_ring_ent*, align 8
  %8 = alloca %struct.ioat_dma_descriptor*, align 8
  %9 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %11 = call %struct.ioat2_dma_chan* @to_ioat2_chan(%struct.dma_chan* %10)
  store %struct.ioat2_dma_chan* %11, %struct.ioat2_dma_chan** %6, align 8
  %12 = load %struct.ioat2_dma_chan*, %struct.ioat2_dma_chan** %6, align 8
  %13 = call i64 @ioat2_alloc_and_lock(i32* %9, %struct.ioat2_dma_chan* %12, i32 1)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.ioat2_dma_chan*, %struct.ioat2_dma_chan** %6, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call %struct.ioat_ring_ent* @ioat2_get_ring_ent(%struct.ioat2_dma_chan* %16, i32 %17)
  store %struct.ioat_ring_ent* %18, %struct.ioat_ring_ent** %7, align 8
  br label %20

19:                                               ; preds = %2
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %3, align 8
  br label %63

20:                                               ; preds = %15
  %21 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %7, align 8
  %22 = getelementptr inbounds %struct.ioat_ring_ent, %struct.ioat_ring_ent* %21, i32 0, i32 2
  %23 = load %struct.ioat_dma_descriptor*, %struct.ioat_dma_descriptor** %22, align 8
  store %struct.ioat_dma_descriptor* %23, %struct.ioat_dma_descriptor** %8, align 8
  %24 = load %struct.ioat_dma_descriptor*, %struct.ioat_dma_descriptor** %8, align 8
  %25 = getelementptr inbounds %struct.ioat_dma_descriptor, %struct.ioat_dma_descriptor* %24, i32 0, i32 4
  store i64 0, i64* %25, align 8
  %26 = load %struct.ioat_dma_descriptor*, %struct.ioat_dma_descriptor** %8, align 8
  %27 = getelementptr inbounds %struct.ioat_dma_descriptor, %struct.ioat_dma_descriptor* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load %struct.ioat_dma_descriptor*, %struct.ioat_dma_descriptor** %8, align 8
  %30 = getelementptr inbounds %struct.ioat_dma_descriptor, %struct.ioat_dma_descriptor* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @DMA_PREP_FENCE, align 8
  %34 = and i64 %32, %33
  %35 = icmp ne i64 %34, 0
  %36 = xor i1 %35, true
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = load %struct.ioat_dma_descriptor*, %struct.ioat_dma_descriptor** %8, align 8
  %40 = getelementptr inbounds %struct.ioat_dma_descriptor, %struct.ioat_dma_descriptor* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  store i32 %38, i32* %41, align 4
  %42 = load %struct.ioat_dma_descriptor*, %struct.ioat_dma_descriptor** %8, align 8
  %43 = getelementptr inbounds %struct.ioat_dma_descriptor, %struct.ioat_dma_descriptor* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 3
  store i32 1, i32* %44, align 4
  %45 = load i32, i32* @NULL_DESC_BUFFER_SIZE, align 4
  %46 = load %struct.ioat_dma_descriptor*, %struct.ioat_dma_descriptor** %8, align 8
  %47 = getelementptr inbounds %struct.ioat_dma_descriptor, %struct.ioat_dma_descriptor* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.ioat_dma_descriptor*, %struct.ioat_dma_descriptor** %8, align 8
  %49 = getelementptr inbounds %struct.ioat_dma_descriptor, %struct.ioat_dma_descriptor* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load %struct.ioat_dma_descriptor*, %struct.ioat_dma_descriptor** %8, align 8
  %51 = getelementptr inbounds %struct.ioat_dma_descriptor, %struct.ioat_dma_descriptor* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %7, align 8
  %54 = getelementptr inbounds %struct.ioat_ring_ent, %struct.ioat_ring_ent* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %54, i32 0, i32 0
  store i64 %52, i64* %55, align 8
  %56 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %7, align 8
  %57 = getelementptr inbounds %struct.ioat_ring_ent, %struct.ioat_ring_ent* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = load %struct.ioat2_dma_chan*, %struct.ioat2_dma_chan** %6, align 8
  %59 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %7, align 8
  %60 = call i32 @dump_desc_dbg(%struct.ioat2_dma_chan* %58, %struct.ioat_ring_ent* %59)
  %61 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %7, align 8
  %62 = getelementptr inbounds %struct.ioat_ring_ent, %struct.ioat_ring_ent* %61, i32 0, i32 1
  store %struct.dma_async_tx_descriptor* %62, %struct.dma_async_tx_descriptor** %3, align 8
  br label %63

63:                                               ; preds = %20, %19
  %64 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %3, align 8
  ret %struct.dma_async_tx_descriptor* %64
}

declare dso_local %struct.ioat2_dma_chan* @to_ioat2_chan(%struct.dma_chan*) #1

declare dso_local i64 @ioat2_alloc_and_lock(i32*, %struct.ioat2_dma_chan*, i32) #1

declare dso_local %struct.ioat_ring_ent* @ioat2_get_ring_ent(%struct.ioat2_dma_chan*, i32) #1

declare dso_local i32 @dump_desc_dbg(%struct.ioat2_dma_chan*, %struct.ioat_ring_ent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
