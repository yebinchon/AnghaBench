; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_get_curr_lchunk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_get_curr_lchunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.ql_adapter = type { i32 }
%struct.rx_ring = type { i64 }

@mapaddr = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bq_desc* (%struct.ql_adapter*, %struct.rx_ring*)* @ql_get_curr_lchunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bq_desc* @ql_get_curr_lchunk(%struct.ql_adapter* %0, %struct.rx_ring* %1) #0 {
  %3 = alloca %struct.ql_adapter*, align 8
  %4 = alloca %struct.rx_ring*, align 8
  %5 = alloca %struct.bq_desc*, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %3, align 8
  store %struct.rx_ring* %1, %struct.rx_ring** %4, align 8
  %6 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %7 = call %struct.bq_desc* @ql_get_curr_lbuf(%struct.rx_ring* %6)
  store %struct.bq_desc* %7, %struct.bq_desc** %5, align 8
  %8 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.bq_desc*, %struct.bq_desc** %5, align 8
  %12 = load i32, i32* @mapaddr, align 4
  %13 = call i32 @pci_unmap_addr(%struct.bq_desc* %11, i32 %12)
  %14 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %15 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %18 = call i32 @pci_dma_sync_single_for_cpu(i32 %10, i32 %13, i64 %16, i32 %17)
  %19 = load %struct.bq_desc*, %struct.bq_desc** %5, align 8
  %20 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %25 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %29 = call i64 @ql_lbq_block_size(%struct.ql_adapter* %28)
  %30 = icmp eq i64 %27, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %2
  %32 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.bq_desc*, %struct.bq_desc** %5, align 8
  %36 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %41 = call i64 @ql_lbq_block_size(%struct.ql_adapter* %40)
  %42 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %43 = call i32 @pci_unmap_page(i32 %34, i32 %39, i64 %41, i32 %42)
  br label %44

44:                                               ; preds = %31, %2
  %45 = load %struct.bq_desc*, %struct.bq_desc** %5, align 8
  ret %struct.bq_desc* %45
}

declare dso_local %struct.bq_desc* @ql_get_curr_lbuf(%struct.rx_ring*) #1

declare dso_local i32 @pci_dma_sync_single_for_cpu(i32, i32, i64, i32) #1

declare dso_local i32 @pci_unmap_addr(%struct.bq_desc*, i32) #1

declare dso_local i64 @ql_lbq_block_size(%struct.ql_adapter*) #1

declare dso_local i32 @pci_unmap_page(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
