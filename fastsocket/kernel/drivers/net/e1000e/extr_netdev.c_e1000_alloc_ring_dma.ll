; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_netdev.c_e1000_alloc_ring_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_netdev.c_e1000_alloc_ring_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.e1000_ring = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_adapter*, %struct.e1000_ring*)* @e1000_alloc_ring_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_alloc_ring_dma(%struct.e1000_adapter* %0, %struct.e1000_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.e1000_adapter*, align 8
  %5 = alloca %struct.e1000_ring*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %4, align 8
  store %struct.e1000_ring* %1, %struct.e1000_ring** %5, align 8
  %7 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %8 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %7, i32 0, i32 0
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %6, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = load %struct.e1000_ring*, %struct.e1000_ring** %5, align 8
  %13 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.e1000_ring*, %struct.e1000_ring** %5, align 8
  %16 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %15, i32 0, i32 1
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32 @dma_alloc_coherent(i32* %11, i32 %14, i32* %16, i32 %17)
  %19 = load %struct.e1000_ring*, %struct.e1000_ring** %5, align 8
  %20 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.e1000_ring*, %struct.e1000_ring** %5, align 8
  %22 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %29

28:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
