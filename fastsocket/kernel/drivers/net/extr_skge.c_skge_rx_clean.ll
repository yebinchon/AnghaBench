; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_skge_rx_clean.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_skge_rx_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skge_port = type { %struct.skge_ring, %struct.skge_hw* }
%struct.skge_ring = type { %struct.skge_element* }
%struct.skge_element = type { i32*, %struct.skge_rx_desc*, %struct.skge_element* }
%struct.skge_rx_desc = type { i64 }
%struct.skge_hw = type { i32 }

@mapaddr = common dso_local global i32 0, align 4
@maplen = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skge_port*)* @skge_rx_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skge_rx_clean(%struct.skge_port* %0) #0 {
  %2 = alloca %struct.skge_port*, align 8
  %3 = alloca %struct.skge_hw*, align 8
  %4 = alloca %struct.skge_ring*, align 8
  %5 = alloca %struct.skge_element*, align 8
  %6 = alloca %struct.skge_rx_desc*, align 8
  store %struct.skge_port* %0, %struct.skge_port** %2, align 8
  %7 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %8 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %7, i32 0, i32 1
  %9 = load %struct.skge_hw*, %struct.skge_hw** %8, align 8
  store %struct.skge_hw* %9, %struct.skge_hw** %3, align 8
  %10 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %11 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %10, i32 0, i32 0
  store %struct.skge_ring* %11, %struct.skge_ring** %4, align 8
  %12 = load %struct.skge_ring*, %struct.skge_ring** %4, align 8
  %13 = getelementptr inbounds %struct.skge_ring, %struct.skge_ring* %12, i32 0, i32 0
  %14 = load %struct.skge_element*, %struct.skge_element** %13, align 8
  store %struct.skge_element* %14, %struct.skge_element** %5, align 8
  br label %15

15:                                               ; preds = %44, %1
  %16 = load %struct.skge_element*, %struct.skge_element** %5, align 8
  %17 = getelementptr inbounds %struct.skge_element, %struct.skge_element* %16, i32 0, i32 1
  %18 = load %struct.skge_rx_desc*, %struct.skge_rx_desc** %17, align 8
  store %struct.skge_rx_desc* %18, %struct.skge_rx_desc** %6, align 8
  %19 = load %struct.skge_rx_desc*, %struct.skge_rx_desc** %6, align 8
  %20 = getelementptr inbounds %struct.skge_rx_desc, %struct.skge_rx_desc* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.skge_element*, %struct.skge_element** %5, align 8
  %22 = getelementptr inbounds %struct.skge_element, %struct.skge_element* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %43

25:                                               ; preds = %15
  %26 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %27 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.skge_element*, %struct.skge_element** %5, align 8
  %30 = load i32, i32* @mapaddr, align 4
  %31 = call i32 @pci_unmap_addr(%struct.skge_element* %29, i32 %30)
  %32 = load %struct.skge_element*, %struct.skge_element** %5, align 8
  %33 = load i32, i32* @maplen, align 4
  %34 = call i32 @pci_unmap_len(%struct.skge_element* %32, i32 %33)
  %35 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %36 = call i32 @pci_unmap_single(i32 %28, i32 %31, i32 %34, i32 %35)
  %37 = load %struct.skge_element*, %struct.skge_element** %5, align 8
  %38 = getelementptr inbounds %struct.skge_element, %struct.skge_element* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @dev_kfree_skb(i32* %39)
  %41 = load %struct.skge_element*, %struct.skge_element** %5, align 8
  %42 = getelementptr inbounds %struct.skge_element, %struct.skge_element* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %25, %15
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.skge_element*, %struct.skge_element** %5, align 8
  %46 = getelementptr inbounds %struct.skge_element, %struct.skge_element* %45, i32 0, i32 2
  %47 = load %struct.skge_element*, %struct.skge_element** %46, align 8
  store %struct.skge_element* %47, %struct.skge_element** %5, align 8
  %48 = load %struct.skge_ring*, %struct.skge_ring** %4, align 8
  %49 = getelementptr inbounds %struct.skge_ring, %struct.skge_ring* %48, i32 0, i32 0
  %50 = load %struct.skge_element*, %struct.skge_element** %49, align 8
  %51 = icmp ne %struct.skge_element* %47, %50
  br i1 %51, label %15, label %52

52:                                               ; preds = %44
  ret void
}

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @pci_unmap_addr(%struct.skge_element*, i32) #1

declare dso_local i32 @pci_unmap_len(%struct.skge_element*, i32) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
