; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_alloc_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_alloc_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw2100_priv = type { i32 }
%struct.ipw2100_rx_packet = type { %struct.TYPE_2__*, i32, %struct.ipw2100_rx* }
%struct.TYPE_2__ = type { i64 }
%struct.ipw2100_rx = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw2100_priv*, %struct.ipw2100_rx_packet*)* @ipw2100_alloc_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw2100_alloc_skb(%struct.ipw2100_priv* %0, %struct.ipw2100_rx_packet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipw2100_priv*, align 8
  %5 = alloca %struct.ipw2100_rx_packet*, align 8
  store %struct.ipw2100_priv* %0, %struct.ipw2100_priv** %4, align 8
  store %struct.ipw2100_rx_packet* %1, %struct.ipw2100_rx_packet** %5, align 8
  %6 = call %struct.TYPE_2__* @dev_alloc_skb(i32 4)
  %7 = load %struct.ipw2100_rx_packet*, %struct.ipw2100_rx_packet** %5, align 8
  %8 = getelementptr inbounds %struct.ipw2100_rx_packet, %struct.ipw2100_rx_packet* %7, i32 0, i32 0
  store %struct.TYPE_2__* %6, %struct.TYPE_2__** %8, align 8
  %9 = load %struct.ipw2100_rx_packet*, %struct.ipw2100_rx_packet** %5, align 8
  %10 = getelementptr inbounds %struct.ipw2100_rx_packet, %struct.ipw2100_rx_packet* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %37

16:                                               ; preds = %2
  %17 = load %struct.ipw2100_rx_packet*, %struct.ipw2100_rx_packet** %5, align 8
  %18 = getelementptr inbounds %struct.ipw2100_rx_packet, %struct.ipw2100_rx_packet* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.ipw2100_rx*
  %23 = load %struct.ipw2100_rx_packet*, %struct.ipw2100_rx_packet** %5, align 8
  %24 = getelementptr inbounds %struct.ipw2100_rx_packet, %struct.ipw2100_rx_packet* %23, i32 0, i32 2
  store %struct.ipw2100_rx* %22, %struct.ipw2100_rx** %24, align 8
  %25 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %26 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ipw2100_rx_packet*, %struct.ipw2100_rx_packet** %5, align 8
  %29 = getelementptr inbounds %struct.ipw2100_rx_packet, %struct.ipw2100_rx_packet* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %34 = call i32 @pci_map_single(i32 %27, i64 %32, i32 4, i32 %33)
  %35 = load %struct.ipw2100_rx_packet*, %struct.ipw2100_rx_packet** %5, align 8
  %36 = getelementptr inbounds %struct.ipw2100_rx_packet, %struct.ipw2100_rx_packet* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %16, %13
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.TYPE_2__* @dev_alloc_skb(i32) #1

declare dso_local i32 @pci_map_single(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
