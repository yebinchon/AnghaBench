; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_sky2_rx_unmap_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_sky2_rx_unmap_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.rx_ring_info = type { i32*, i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@data_size = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.rx_ring_info*)* @sky2_rx_unmap_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sky2_rx_unmap_skb(%struct.pci_dev* %0, %struct.rx_ring_info* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.rx_ring_info*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.rx_ring_info* %1, %struct.rx_ring_info** %4, align 8
  %7 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %8 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %7, i32 0, i32 2
  %9 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %9, %struct.sk_buff** %5, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %11 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %12 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %15 = load i32, i32* @data_size, align 4
  %16 = call i32 @pci_unmap_len(%struct.rx_ring_info* %14, i32 %15)
  %17 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %18 = call i32 @pci_unmap_single(%struct.pci_dev* %10, i32 %13, i32 %16, i32 %17)
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %46, %2
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %20, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %19
  %27 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %28 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %29 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %35)
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %45 = call i32 @pci_unmap_page(%struct.pci_dev* %27, i32 %34, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %26
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %19

49:                                               ; preds = %19
  ret void
}

declare dso_local i32 @pci_unmap_single(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @pci_unmap_len(%struct.rx_ring_info*, i32) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @pci_unmap_page(%struct.pci_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
