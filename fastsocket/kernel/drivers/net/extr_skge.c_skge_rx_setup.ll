; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_skge_rx_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_skge_rx_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skge_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.skge_element = type { %struct.sk_buff*, %struct.skge_rx_desc* }
%struct.skge_rx_desc = type { i32, i32, i32, i64, i64, i8*, i8* }
%struct.sk_buff = type { i32 }

@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i8* null, align 8
@BMU_OWN = common dso_local global i32 0, align 4
@BMU_STF = common dso_local global i32 0, align 4
@BMU_IRQ_EOF = common dso_local global i32 0, align 4
@BMU_TCP_CHECK = common dso_local global i32 0, align 4
@mapaddr = common dso_local global i32 0, align 4
@maplen = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skge_port*, %struct.skge_element*, %struct.sk_buff*, i32)* @skge_rx_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skge_rx_setup(%struct.skge_port* %0, %struct.skge_element* %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca %struct.skge_port*, align 8
  %6 = alloca %struct.skge_element*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.skge_rx_desc*, align 8
  %10 = alloca i32, align 4
  store %struct.skge_port* %0, %struct.skge_port** %5, align 8
  store %struct.skge_element* %1, %struct.skge_element** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.skge_element*, %struct.skge_element** %6, align 8
  %12 = getelementptr inbounds %struct.skge_element, %struct.skge_element* %11, i32 0, i32 1
  %13 = load %struct.skge_rx_desc*, %struct.skge_rx_desc** %12, align 8
  store %struct.skge_rx_desc* %13, %struct.skge_rx_desc** %9, align 8
  %14 = load %struct.skge_port*, %struct.skge_port** %5, align 8
  %15 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %24 = call i32 @pci_map_single(i32 %18, i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.skge_rx_desc*, %struct.skge_rx_desc** %9, align 8
  %27 = getelementptr inbounds %struct.skge_rx_desc, %struct.skge_rx_desc* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %10, align 4
  %29 = ashr i32 %28, 32
  %30 = load %struct.skge_rx_desc*, %struct.skge_rx_desc** %9, align 8
  %31 = getelementptr inbounds %struct.skge_rx_desc, %struct.skge_rx_desc* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = load %struct.skge_element*, %struct.skge_element** %6, align 8
  %34 = getelementptr inbounds %struct.skge_element, %struct.skge_element* %33, i32 0, i32 0
  store %struct.sk_buff* %32, %struct.sk_buff** %34, align 8
  %35 = load i8*, i8** @ETH_HLEN, align 8
  %36 = load %struct.skge_rx_desc*, %struct.skge_rx_desc** %9, align 8
  %37 = getelementptr inbounds %struct.skge_rx_desc, %struct.skge_rx_desc* %36, i32 0, i32 6
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** @ETH_HLEN, align 8
  %39 = load %struct.skge_rx_desc*, %struct.skge_rx_desc** %9, align 8
  %40 = getelementptr inbounds %struct.skge_rx_desc, %struct.skge_rx_desc* %39, i32 0, i32 5
  store i8* %38, i8** %40, align 8
  %41 = load %struct.skge_rx_desc*, %struct.skge_rx_desc** %9, align 8
  %42 = getelementptr inbounds %struct.skge_rx_desc, %struct.skge_rx_desc* %41, i32 0, i32 4
  store i64 0, i64* %42, align 8
  %43 = load %struct.skge_rx_desc*, %struct.skge_rx_desc** %9, align 8
  %44 = getelementptr inbounds %struct.skge_rx_desc, %struct.skge_rx_desc* %43, i32 0, i32 3
  store i64 0, i64* %44, align 8
  %45 = call i32 (...) @wmb()
  %46 = load i32, i32* @BMU_OWN, align 4
  %47 = load i32, i32* @BMU_STF, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @BMU_IRQ_EOF, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @BMU_TCP_CHECK, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.skge_rx_desc*, %struct.skge_rx_desc** %9, align 8
  %56 = getelementptr inbounds %struct.skge_rx_desc, %struct.skge_rx_desc* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.skge_element*, %struct.skge_element** %6, align 8
  %58 = load i32, i32* @mapaddr, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @pci_unmap_addr_set(%struct.skge_element* %57, i32 %58, i32 %59)
  %61 = load %struct.skge_element*, %struct.skge_element** %6, align 8
  %62 = load i32, i32* @maplen, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @pci_unmap_len_set(%struct.skge_element* %61, i32 %62, i32 %63)
  ret void
}

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @pci_unmap_addr_set(%struct.skge_element*, i32, i32) #1

declare dso_local i32 @pci_unmap_len_set(%struct.skge_element*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
