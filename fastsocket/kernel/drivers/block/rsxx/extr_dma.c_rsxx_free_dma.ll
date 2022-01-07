; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_dma.c_rsxx_free_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_dma.c_rsxx_free_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsxx_dma_ctrl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.rsxx_dma = type { i64, i32 }

@HW_CMD_BLK_DISCARD = common dso_local global i64 0, align 8
@HW_CMD_BLK_WRITE = common dso_local global i64 0, align 8
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@rsxx_dma_pool = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsxx_dma_ctrl*, %struct.rsxx_dma*)* @rsxx_free_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsxx_free_dma(%struct.rsxx_dma_ctrl* %0, %struct.rsxx_dma* %1) #0 {
  %3 = alloca %struct.rsxx_dma_ctrl*, align 8
  %4 = alloca %struct.rsxx_dma*, align 8
  store %struct.rsxx_dma_ctrl* %0, %struct.rsxx_dma_ctrl** %3, align 8
  store %struct.rsxx_dma* %1, %struct.rsxx_dma** %4, align 8
  %5 = load %struct.rsxx_dma*, %struct.rsxx_dma** %4, align 8
  %6 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @HW_CMD_BLK_DISCARD, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %45

10:                                               ; preds = %2
  %11 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %3, align 8
  %12 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.rsxx_dma*, %struct.rsxx_dma** %4, align 8
  %17 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @pci_dma_mapping_error(i32 %15, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %44, label %21

21:                                               ; preds = %10
  %22 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %3, align 8
  %23 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.rsxx_dma*, %struct.rsxx_dma** %4, align 8
  %28 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.rsxx_dma*, %struct.rsxx_dma** %4, align 8
  %31 = call i32 @get_dma_size(%struct.rsxx_dma* %30)
  %32 = load %struct.rsxx_dma*, %struct.rsxx_dma** %4, align 8
  %33 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @HW_CMD_BLK_WRITE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %21
  %38 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  br label %41

39:                                               ; preds = %21
  %40 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = call i32 @pci_unmap_page(i32 %26, i32 %29, i32 %31, i32 %42)
  br label %44

44:                                               ; preds = %41, %10
  br label %45

45:                                               ; preds = %44, %2
  %46 = load i32, i32* @rsxx_dma_pool, align 4
  %47 = load %struct.rsxx_dma*, %struct.rsxx_dma** %4, align 8
  %48 = call i32 @kmem_cache_free(i32 %46, %struct.rsxx_dma* %47)
  ret void
}

declare dso_local i32 @pci_dma_mapping_error(i32, i32) #1

declare dso_local i32 @pci_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @get_dma_size(%struct.rsxx_dma*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.rsxx_dma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
