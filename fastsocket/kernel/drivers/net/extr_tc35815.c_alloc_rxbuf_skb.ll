; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tc35815.c_alloc_rxbuf_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tc35815.c_alloc_rxbuf_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.pci_dev = type { i32 }

@RX_BUF_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.net_device*, %struct.pci_dev*, i32*)* @alloc_rxbuf_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @alloc_rxbuf_skb(%struct.net_device* %0, %struct.pci_dev* %1, i32* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* @RX_BUF_SIZE, align 4
  %10 = call %struct.sk_buff* @dev_alloc_skb(i32 %9)
  store %struct.sk_buff* %10, %struct.sk_buff** %8, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %12 = icmp ne %struct.sk_buff* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %35

14:                                               ; preds = %3
  %15 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @RX_BUF_SIZE, align 4
  %20 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %21 = call i32 @pci_map_single(%struct.pci_dev* %15, i32 %18, i32 %19, i32 %20)
  %22 = load i32*, i32** %7, align 8
  store i32 %21, i32* %22, align 4
  %23 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @pci_dma_mapping_error(%struct.pci_dev* %23, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %14
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %30 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %29)
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %35

31:                                               ; preds = %14
  %32 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %33 = call i32 @skb_reserve(%struct.sk_buff* %32, i32 2)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %34, %struct.sk_buff** %4, align 8
  br label %35

35:                                               ; preds = %31, %28, %13
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %36
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @pci_map_single(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i64 @pci_dma_mapping_error(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
