; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_free_rx_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_free_rx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_adapter = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.pch_gbe_rx_ring = type { i32*, i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pch_gbe_free_rx_resources(%struct.pch_gbe_adapter* %0, %struct.pch_gbe_rx_ring* %1) #0 {
  %3 = alloca %struct.pch_gbe_adapter*, align 8
  %4 = alloca %struct.pch_gbe_rx_ring*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  store %struct.pch_gbe_adapter* %0, %struct.pch_gbe_adapter** %3, align 8
  store %struct.pch_gbe_rx_ring* %1, %struct.pch_gbe_rx_ring** %4, align 8
  %6 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %6, i32 0, i32 0
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %5, align 8
  %9 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %10 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %4, align 8
  %11 = call i32 @pch_gbe_clean_rx_ring(%struct.pch_gbe_adapter* %9, %struct.pch_gbe_rx_ring* %10)
  %12 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %4, align 8
  %13 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @vfree(i32* %14)
  %16 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %4, align 8
  %17 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %16, i32 0, i32 3
  store i32* null, i32** %17, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %19 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %4, align 8
  %20 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %4, align 8
  %23 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %4, align 8
  %26 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @pci_free_consistent(%struct.pci_dev* %18, i32 %21, i32* %24, i32 %27)
  %29 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %4, align 8
  %30 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  ret void
}

declare dso_local i32 @pch_gbe_clean_rx_ring(%struct.pch_gbe_adapter*, %struct.pch_gbe_rx_ring*) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
