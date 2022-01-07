; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_spider_net.c_spider_net_free_rx_chain_contents.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_spider_net.c_spider_net_free_rx_chain_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spider_net_card = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.spider_net_descr* }
%struct.spider_net_descr = type { %struct.spider_net_descr*, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@SPIDER_NET_MAX_FRAME = common dso_local global i32 0, align 4
@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spider_net_card*)* @spider_net_free_rx_chain_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spider_net_free_rx_chain_contents(%struct.spider_net_card* %0) #0 {
  %2 = alloca %struct.spider_net_card*, align 8
  %3 = alloca %struct.spider_net_descr*, align 8
  store %struct.spider_net_card* %0, %struct.spider_net_card** %2, align 8
  %4 = load %struct.spider_net_card*, %struct.spider_net_card** %2, align 8
  %5 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load %struct.spider_net_descr*, %struct.spider_net_descr** %6, align 8
  store %struct.spider_net_descr* %7, %struct.spider_net_descr** %3, align 8
  br label %8

8:                                                ; preds = %35, %1
  %9 = load %struct.spider_net_descr*, %struct.spider_net_descr** %3, align 8
  %10 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %31

13:                                               ; preds = %8
  %14 = load %struct.spider_net_card*, %struct.spider_net_card** %2, align 8
  %15 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.spider_net_descr*, %struct.spider_net_descr** %3, align 8
  %18 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %17, i32 0, i32 2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SPIDER_NET_MAX_FRAME, align 4
  %23 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %24 = call i32 @pci_unmap_single(i32 %16, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.spider_net_descr*, %struct.spider_net_descr** %3, align 8
  %26 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @dev_kfree_skb(i32* %27)
  %29 = load %struct.spider_net_descr*, %struct.spider_net_descr** %3, align 8
  %30 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %29, i32 0, i32 1
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %13, %8
  %32 = load %struct.spider_net_descr*, %struct.spider_net_descr** %3, align 8
  %33 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %32, i32 0, i32 0
  %34 = load %struct.spider_net_descr*, %struct.spider_net_descr** %33, align 8
  store %struct.spider_net_descr* %34, %struct.spider_net_descr** %3, align 8
  br label %35

35:                                               ; preds = %31
  %36 = load %struct.spider_net_descr*, %struct.spider_net_descr** %3, align 8
  %37 = load %struct.spider_net_card*, %struct.spider_net_card** %2, align 8
  %38 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load %struct.spider_net_descr*, %struct.spider_net_descr** %39, align 8
  %41 = icmp ne %struct.spider_net_descr* %36, %40
  br i1 %41, label %8, label %42

42:                                               ; preds = %35
  ret void
}

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
