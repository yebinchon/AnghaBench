; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_netdev.c_e1000e_free_tx_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_netdev.c_e1000e_free_tx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_ring = type { i32*, i32, i32, i32*, %struct.e1000_adapter* }
%struct.e1000_adapter = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000e_free_tx_resources(%struct.e1000_ring* %0) #0 {
  %2 = alloca %struct.e1000_ring*, align 8
  %3 = alloca %struct.e1000_adapter*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.e1000_ring* %0, %struct.e1000_ring** %2, align 8
  %5 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %6 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %5, i32 0, i32 4
  %7 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  store %struct.e1000_adapter* %7, %struct.e1000_adapter** %3, align 8
  %8 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %8, i32 0, i32 0
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %4, align 8
  %11 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %12 = call i32 @e1000_clean_tx_ring(%struct.e1000_ring* %11)
  %13 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %14 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @vfree(i32* %15)
  %17 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %18 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %17, i32 0, i32 3
  store i32* null, i32** %18, align 8
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 0
  %21 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %22 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %25 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %28 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dma_free_coherent(i32* %20, i32 %23, i32* %26, i32 %29)
  %31 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %32 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  ret void
}

declare dso_local i32 @e1000_clean_tx_ring(%struct.e1000_ring*) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
